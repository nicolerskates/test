- view: users
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: age
    type: number
    sql: ${TABLE}.age

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: epoch_at
    type: number
    sql: ${TABLE}.epoch_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: yyyymmdd_at
    type: number
    sql: ${TABLE}.yyyymmdd_at

  - measure: count
    type: count
    drill_fields: [id, name, orders.count]

