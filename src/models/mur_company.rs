use sea_orm::entity::prelude::*;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, DeriveEntityModel, Serialize, Deserialize)]
#[sea_orm(table_name = "MUR_COMPANY")]
pub struct Model{
    #[sea_orm(primary_key, auto_increment = true)]
    #[serde(skip_deserializing)]
    pub id: i32,
    pub company_code: String,
    pub open_date: String,
    #[sea_orm(nullable)]
    pub close_date: String,
    pub name: String,
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