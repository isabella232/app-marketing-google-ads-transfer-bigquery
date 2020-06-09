include: "google_ads_base.view"

view: video_adapter {
  extends: [google_ads_config, google_ads_base]
  sql_table_name: {{ video.adwords_schema._sql }}.Video_{{ video.adwords_customer_id._sql }} ;;

  dimension: ad_group_id {
    hidden: yes
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: video_duration {
    type: number
    sql: ${TABLE}.VideoDuration ;;
  }

  dimension: video_id {
    hidden: yes
    type: string
    sql: ${TABLE}.VideoId ;;
  }

  dimension: video_title {
    type: string
    sql: ${TABLE}.VideoTitle ;;
  }
}