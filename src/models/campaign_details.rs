use sea_orm::entity::prelude::*;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, DeriveEntityModel, Serialize, Deserialize)]
#[sea_orm(table_name = "CAMPAIGN_DETAILS")]
pub struct Model{
    #[sea_orm(primary_key, auto_increment = true)]
    #[serde(skip_deserializing)]
    pub id: i32,
    pub campaign_no: String,
    pub company_code: String,
    pub menu_code: String,
    pub from_date: String,
    pub end_date: String,
    #[sea_orm(nullable)]
    pub standard_price: Decimal,
    #[sea_orm(nullable)]
    pub actual_price: Decimal,
    #[sea_orm(nullable)]
    pub cost: Decimal,
    #[sea_orm(nullable)]
    pub margin: Decimal,
    #[sea_orm(nullable)]
    pub public_amount: i32,
    pub update_user: String,
    pub update_date: DateTimeWithTimeZone,
    pub insert_user: String,
    pub insert_date: DateTimeWithTimeZone,
}

#[derive(Copy, Clone, Debug, EnumIter)]
pub enum Relation{}

impl RelationTrait for Relation{
    fn def(&self) -> RelationDef{
        panic!("No RelationDef")
    }
}

impl ActiveModelBehavior for ActiveModel {}