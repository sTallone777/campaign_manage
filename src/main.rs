mod models;

use axum::{
    error_handling::HandleErrorLayer,
    extract::{Extension, Form, Path, Query},
    http::StatusCode,
    response::Html,
    routing::{get, post},
    AddExtensionLayer,
    Server, Router,
};
use std::{env, net::SocketAddr, str::FromStr};
use sea_orm::{prelude::*, Database, QueryOrder, Set};
use serde::{Deserialize, Serialize};
use serde_json::Result;
use tower::ServiceBuilder;
use models::campaign_details::Entity as campaign_details;

#[tokio::main]
async fn main() -> anyhow::Result<()>{
    env::set_var("managelog", "debug");
    env_logger::init();

    dotenv::dotenv().ok();

    let db_url = env::var("DATABASE_URL").expect("DATABASE_URL is not set in .env file");
    let host = env::var("HOST").expect("HOST is not set in .env file");
    let port = env::var("PORT").expect("PORT is not set in .env file");
    let server_url = format!("{}:{}", host, port);

    let conn = Database::connect(db_url)
        .await
        .expect("Database connection failed");
    
    let app = Router::new().route("/CampaignDetails", get(find_all_details))
    .layer(
        ServiceBuilder::new()
            .layer(AddExtensionLayer::new(conn)),
    );
    let addr = SocketAddr::from_str(&server_url).unwrap();
    println!("listening on {}", addr);
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();

    Ok(())
}


async fn find_all_details(Extension(ref conn): Extension<DatabaseConnection>) -> String {
    print!("find all campaign details: ");

    let detail_list: Vec<models::campaign_details::Model> = campaign_details::find().all(conn).await.expect("could not retrieve campaign details");
    let detail_json = serde_json::to_string(&detail_list).unwrap();
    println!();
    for cc in detail_list.iter() {
        println!("{:?}\n", cc);
    }

    detail_json
}