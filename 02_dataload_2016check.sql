-------------------
-- DPC
-------------------
BEGIN;
COPY dpc.d_ir(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_pay_ins,
  empty_3,
  d_point_tbl,
  empty_4,
  spare_1,
  empty_5,
  d_claim_date,
  d_multivol_info,
  empty_6,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_IR.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;

----
--test
----

BEGIN;
-- COPY dpc.d_re(
--    d_abs_no,
--     d_rpt_no,
--     empty_1,
--     empty_2,
--     d_rec_info,
--     empty_3,
--     empty_4,
--     empty_5,
--     empty_6,
--     empty_7,
--     empty_8,
--     d_diag_date,
--     d_sex_code,
--     empty_9,
--     empty_10,
--     d_adm_date,
--     d_ward_class,
--     empty_11,
--     empty_12,
--     spare_1,
--     empty_13,
--     spare_2,
--     spare_3,
--     spere_depart_code,
--     d_rpt_sum_code,
--     d_details_num,
--     d_search_no,
--     d_rec_spec_date,
--     empty_14,
--     d_depart_name,
--     d_body_name,
--     d_sex_etc,
--     d_med_treat,
--     d_spec_dis,
--     d_import_date,
--     d_age_num1,
--     d_age_num2,
--     empty_15,
--     d_birthage_num_1,
--     d_birthage_num_2
--   )
--   FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_RE.csv'
--   WITH  (FORMAT CSV
--          ,DELIMITER ','
--          ,ENCODING 'SJIS'
--   );
COMMIT;
BEGIN;
COPY dpc.d_ho(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    empty_3,
    empty_4,
    empty_5,
    d_ho_med_day_num,
    empty_6,
    spare_1,
    d_ho_times_num,
    d_ho_fee_sum,
    empty_7,
    empty_8,
    empty_9,
    empty_10,
    empty_11,
    d_ho_std_burden,
    soukatsu_frag,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_HO.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
COMMIT;
BEGIN;
COPY dpc.d_ko(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    empty_3,
    empty_4,
    d_ko_med_day_num,
    d_ko_sum_point,
    empty_5,
    empty_6,
    empty_7,
    spare_1,
    d_ko_times_num,
    d_ko_fee_sum,
    d_ko_std_burden,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_KO.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
  COMMIT;
BEGIN;
COPY dpc.d_bu(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    d_dpc_no,
    d_hosp_date,
    d_disch_date,
    d_dpc_outcome,
    empty_3,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_BU_ANO.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
  COMMIT;
BEGIN;
COPY dpc.d_sb(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    d_sy_code,
    d_modifier_code,
    d_susp_disease_flag,
    empty_3,
    d_icd_code,
    d_dis_name_code,
    d_death_cause,
    empty_5,
    d_main_dis_flag,
    empty_4,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_SB_ANO.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
  COMMIT;
BEGIN;
COPY dpc.d_sy(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    d_sy_code,
    d_sy_start_date,
    d_outcome_code,
    d_modifier_code,
    d_susp_disease_flag,
    empty_3,
    d_main_sy,
    empty_4,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_SY_ANO.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
  COMMIT;
BEGIN;
COPY dpc.d_kk(
    d_abs_no,
    d_rpt_no,
    empty_1,
    empty_2,
    d_rec_info,
    spare_1,
    d_ward_move_code,
    d_hosp_code,
    d_last_disch_date,
    d_last_hosp_code,
    d_age_in_hosp,
    d_weight_in_birth,
    d_jcs_info,
    spare_2,
    d_burn_index,
    empty_3,
    spare_3,
    spare_4,
    d_med_date,
    d_import_date
  )
  FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_KK.csv'
  WITH  (FORMAT CSV
         ,DELIMITER ','
         ,ENCODING 'SJIS'
  );
  COMMIT;
BEGIN;
COPY dpc.d_sk(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_sk_prac_code,
  d_class_no,
  d_sk_prac_date,
  spare_1,
  d_sk_class_code,
  empty_3,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_SK.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'UTF8'
);
COMMIT;
BEGIN;
COPY dpc.d_ga(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_date_ga,
  d_claim_regu_code,
  d_stay,
  d_dpc_no,
  empty_3,
  d_readmi_plan_code,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_GA.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_hh(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_date_hh,
  d_claim_regu_code,
  d_insur_code,
  empty_3,
  d_hosp_peri_code,
  d_hosp_peri_point,
  d_hosp_peri_days,
  d_inc_sum_point,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_HH_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_gt(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_date_gt,
  d_claim_regu_code,
  d_insur_code,
  empty_3,
  d_inc_sum_point_add,
  empty_4,
  d_regu_point,
  empty_5,
  d_med_category,
  d_change_date,
  empty_6,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_GT_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_si(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_si_category ,
  empty_3,
  d_si_prac_code,
  d_numeri_data,
  d_si_point,
  d_si_times,
  d_si_comment_1,
  empty_4,
  d_si_comment_2,
  empty_5,
  d_si_comment_3,
  empty_6,
  d_1day_info,
  d_2day_info,
  d_3day_info,
  d_4day_info,
  d_5day_info,
  d_6day_info,
  d_7day_info,
  d_8day_info,
  d_9day_info,
  d_10day_info,
  d_11day_info,
  d_12day_info,
  d_13day_info,
  d_14day_info,
  d_15day_info,
  d_16day_info,
  d_17day_info,
  d_18day_info,
  d_19day_info,
  d_20day_info,
  d_21day_info,
  d_22day_info,
  d_23day_info,
  d_24day_info,
  d_25day_info,
  d_26day_info,
  d_27day_info,
  d_28day_info,
  d_29day_info,
  d_30day_info,
  d_31day_info,
  d_post_med_info,
  d_series_no,
  d_order_no,
  d_post_points,
  empty_7,
  d_post_times,
  empty_8,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_SI_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_iy(
  d_abs_no,
  d_rpt_no,
  empty_11,
  empty_2,
  d_rec_info,
  d_med_category,
  empty_1,
  d_iy_code,
  d_iy_dose,
  d_iy_point,
  d_iy_times,
  d_iy_comment_1,
  empty_12,
  d_iy_comment_2,
  empty_3,
  d_iy_comment_3,
  empty_4,
  d_1day_info,
  d_2day_info,
  d_3day_info,
  d_4day_info,
  d_5day_info,
  d_6day_info,
  d_7day_info,
  d_8day_info,
  d_9day_info,
  d_10day_info,
  d_11day_info,
  d_12day_info,
  d_13day_info,
  d_14day_info,
  d_15day_info,
  d_16day_info,
  d_17day_info,
  d_18day_info,
  d_19day_info,
  d_20day_info,
  d_21day_info,
  d_22day_info,
  d_23day_info,
  d_24day_info,
  d_25day_info,
  d_26day_info,
  d_27day_info,
  d_28day_info,
  d_29day_info,
  d_30day_info,
  d_31day_info,
  d_post_med_info,
  d_series_no,
  d_order_no,
  d_point_comp,
  empty_5,
  d_post_times,
  empty_6,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_IY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_to(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_category,
  empty_3,
  d_to_code,
  d_to_utilization,
  d_to_point,
  d_to_times,
  d_to_unit_code,
  d_to_price,
  empty_4,
  empty_5,
  d_to_comment_1,
  empty_6,
  d_to_comment_2,
  empty_7,
  d_to_comment_3,
  empty_8,
  d_1day_info,
  d_2day_info,
  d_3day_info,
  d_4day_info,
  d_5day_info,
  d_6day_info,
  d_7day_info,
  d_8day_info,
  d_9day_info,
  d_10day_info,
  d_11day_info,
  d_12day_info,
  d_13day_info,
  d_14day_info,
  d_15day_info,
  d_16day_info,
  d_17day_info,
  d_18day_info,
  d_19day_info,
  d_20day_info,
  d_21day_info,
  d_22day_info,
  d_23day_info,
  d_24day_info,
  d_25day_info,
  d_26day_info,
  d_27day_info,
  d_28day_info,
  d_29day_info,
  d_30day_info,
  d_31day_info,
  d_post_med_info,
  d_series_no,
  d_order_no,
  d_point_comp,
  empty_9,
  d_post_times,
  empty_10,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_TO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_ni(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_1day_info,
  d_2day_info,
  d_3day_info,
  d_4day_info,
  d_5day_info,
  d_6day_info,
  d_7day_info,
  d_8day_info,
  d_9day_info,
  d_10day_info,
  d_11day_info,
  d_12day_info,
  d_13day_info,
  d_14day_info,
  d_15day_info,
  d_16day_info,
  d_17day_info,
  d_18day_info,
  d_19day_info,
  d_20day_info,
  d_21day_info,
  d_22day_info,
  d_23day_info,
  d_24day_info,
  d_25day_info,
  d_26day_info,
  d_27day_info,
  d_28day_info,
  d_29day_info,
  d_30day_info,
  d_31day_info,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_NI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_co(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_category,
  empty_3,
  comment_code,
  empty_4,
  d_med_cat_supp,
  d_series_no,
  d_order_no,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_CO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_sj(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_symp_detail_code,
  empty_3,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_SJ.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY dpc.d_cd(
  d_abs_no,
  d_rpt_no,
  empty_1,
  empty_2,
  d_rec_info,
  d_med_prac_date,
  d_med_category,
  d_order_no ,
  d_prac_detailed_no,
  d_rpt_sys_code,
  d_dose_cd,
  d_numeri_data,
  d_unit_code,
  d_cd_times,
  empty_3,
  d_med_date,
  d_import_date
)
FROM  'c:/tmp/ndb/2016_01/DPC/SMPL_DPC_CD_ANO2.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
-------------------
-- MN Ikanyuuin
-------------------
BEGIN;
COPY mn.mn_ir(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_pay_ins,
  empty_3,
  m_point_tbl,
  empty_4,
  empty_5,
  spare_1,
  m_claim_date,
  m_multivol_info,
  empty_6,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_IR.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY mn.mn_re(
--   m_abs_no,
--   m_rpt_no,
--   empty_1,
--   empty_2,
--   m_rec_info,
--   empty_3,
--   empty_4,
--   empty_5,
--   empty_6,
--   empty_7,
--   empty_8,
--   m_diag_date,
--   m_sex_code,
--   empty_9,
--   empty_10,
--   m_adm_date,
--   m_ward_class,
--   empty_11,
--   empty_12,
--   empty_13,
--   m_bed_num,
--   empty_14,
--   spare_1,
--   spare_2,
--   m_old_depart_name,
--   m_serch_num,
--   m_rec_spec_date,
--   empty_15,
--   m_depart_name_1,
--   m_body_name_1,
--   m_sex_1,
--   m_med_treat_1,
--   m_spec_dis_1,
--   m_depart_name_2,
--   m_body_name_2,
--   m_sex_2,
--   m_med_treat_2,
--   m_spec_dis_2,
--   m_depart_name_3,
--   m_body_name_3,
--   m_sex_3,
--   m_med_treat_3,
--   m_spec_dis_3,
--   m_import_date,
--   m_age_num_1,
--   m_age_num_2,
--   empty_16,
--   m_birthage_num_1,
--   birthage_num_2
-- )
-- FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_RE.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;
BEGIN;
COPY mn.mn_ho(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  empty_3,
  empty_4,
  empty_5,
  m_ho_med_day_num,
  m_sum_point,
  spare_1,
  m_ho_times_num,
  m_ho_fee_sum,
  empty_6,
  empty_7,
  empty_8,
  empty_9,
  empty_10,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_HO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_ko(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  empty_3,
  empty_4,
  m_ko_med_day_num,
  m_ko_sum_point,
  empty_5,
  empty_6,
  empty_7,
  spare_1,
  m_ko_times,
  m_ko_fee_sum,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_KO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_sy(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_sy_code,
  m_sy_start_date,
  m_outcome_code,
  m_modifier_code,
  m_suspectdis_frag,
  empty_3,
  m_main_sy,
  m_mainsy_frag,
  empty_4,
  empty_5,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_SY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_si(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_sy_code,
  empty_3,
  m_si_prac_code,
  m_numeri_data,
  m_si_point,
  m_si_times,
  m_si_comment_2,
  empty_4,
  m_si_comment_3,
  empty_5,
  m_si_comment_4,
  empty_6,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_med_cat_supp,
  m_series_no,
  m_order_no,
  m_point_supp,
  empty_7,
  m_times_supp,
  empty_8,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_SI_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_iy(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_iy_code,
  m_iy_dose,
  im_y_point,
  im_y_times,
  m_iy_comment_2,
  empty_4,
  m_iy_comment_3,
  empty_5,
  m_iy_comment_4,
  empty_6,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_med_cat_supp,
  m_series_no,
  m_order_no,
  m_point_supp,
  empty_7,
  m_times_supp,
  empty_8,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_IY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_to(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_to_code,
  m_to_utilization,
  m_to_point,
  m_to_times,
  m_to_unit_code,
  m_to_price,
  empty_4,
  empty_5,
  m_to_comment_1,
  empty_6,
  m_to_comment_2,
  empty_7,
  m_to_comment_3,
  empty_8,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_med_cat_supp,
  m_series_no,
  m_order_no,
  m_point_supp,
  empty_9,
  m_times_supp,
  empty_10,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_TO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_co(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_comment_code,
  empty_4,
  m_med_cat_supp,
  m_series_no,
  m_order_no,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_CO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_ni(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_NI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mn.mn_sj(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_symp_detail_code,
  empty_3,
  m_diag_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_INI/SMPL_MED_INI_SJ.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
-------------------
-- M IkaGairai
-- -------------------
BEGIN;
COPY mgai.m_ir(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_pay_ins,
  empty_3,
  m_point_tbl,
  empty_4,
  empty_5,
  spare_1,
  m_claim_date,
  m_multivol_info,
  empty_6,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_IR.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY mgai.m_re(
--   m_abs_no,
--   m_rpt_no,
--   empty_1,
--   empty_2,
--   m_rec_info,
--   empty_3,
--   empty_4,
--   id1n,
--   empty_5,
--   empty_6,
--   empty_7,
--   m_diag_date,
--   m_sex_code,
--   empty_8,
--   empty_9,
--   m_adm_date,
--   m_ward_class,
--   empty_10,
--   empty_11,
--   empty_12,
--   m_ward_rank,
--   empty_13,
--   spare_1,
--   spare_2,
--   spare_3,
--   m_serch_num,
--   m_rec_spec_date,
--   empty_14,
--   m_depart_name_1,
--   m_body_name_1,
--   m_sex_1,
--   m_med_treat_1,
--   m_spec_dis_1,
--   m_depart_name_2,
--   m_body_name_2,
--   m_sex_2,
--   m_med_treat_2,
--   m_spec_dis_2,
--   m_depart_name_3,
--   m_body_name_3,
--   m_sex_3,
--   m_med_treat_3,
--   m_spec_dis_3,
--   m_import_date,
--   m_age_rank_1,
--   m_age_rank_2,
--  empty_15,
--   m_mage_rank_1,
--   m_mage_rank_2
-- )
-- FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_RE.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;
BEGIN;
COPY mgai.m_ho(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  empty_3,
  empty_4,
  empty_5,
  m_ho_med_day_num,
  m_sum_point,
  spare_1,
  m_ho_times_num,
  m_ho_fee_sum,
  empty_6,
  empty_7,
  empty_8,
  empty_9,
  empty_10,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_HO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_ko(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  empty_3,
  empty_4,
  m_ko_med_day_num,
  m_ko_sum_point,
  empty_5,
  empty_6,
  empty_7,
  spare_1,
  m_ko_times,
  m_ko_fee_sum,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_KO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_sy(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_sy_code,
  m_sy_start_date,
  m_outcome_code,
  m_modifier_code,
  m_suspectdis_frag,
  empty_3,
  m_main_sy,
  m_main_sy_flag,
  empty_4,
  empty_5,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_SY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_si(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_sy_code,
  empty_3,
  m_si_prac_code,
  m_numeri_data,
  m_si_point,
  m_si_times,
  m_si_comment_2,
  empty_4,
  m_si_comment_3,
  empty_5,
  m_si_comment_4,
  empty_6,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_post_med_info,
  m_series_no,
  m_order_no,
  m_point_comp,
  empty_7,
  m_post_times,
  empty_8,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_SI_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_iy(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_iy_code,
  m_iy_dose,
  im_y_point,
  im_y_times,
  m_iy_comment_2,
  empty_4,
  m_iy_comment_3,
  empty_5,
  m_iy_comment_4,
  empty_6,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_post_med_info,
  m_series_no,
  m_order_no,
  m_point_comp,
  empty_7,
  m_post_times,
  empty_8,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_IY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_to(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_to_code,
  m_to_utilization,
  m_to_point,
  m_to_times,
  m_to_unit_code,
  m_to_price,
  empty_4,
  empty_5,
  m_to_comment_2,
  empty_6,
  m_to_comment_3,
  empty_7,
  m_to_comment_4,
  empty_8,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_post_med_info,
  m_series_no,
  m_order_no,
  m_point_comp,
  empty_9,
  m_post_times,
  empty_10,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_TO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_co(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_med_category,
  empty_3,
  m_comment_code,
  empty_4,
  m_post_med_info,
  m_series_no,
  m_order_no,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_CO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_ni(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_1day_info,
  m_2day_info,
  m_3day_info,
  m_4day_info,
  m_5day_info,
  m_6day_info,
  m_7day_info,
  m_8day_info,
  m_9day_info,
  m_10day_info,
  m_11day_info,
  m_12day_info,
  m_13day_info,
  m_14day_info,
  m_15day_info,
  m_16day_info,
  m_17day_info,
  m_18day_info,
  m_19day_info,
  m_20day_info,
  m_21day_info,
  m_22day_info,
  m_23day_info,
  m_24day_info,
  m_25day_info,
  m_26day_info,
  m_27day_info,
  m_28day_info,
  m_29day_info,
  m_30day_info,
  m_31day_info,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_NI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY mgai.m_sj(
  m_abs_no,
  m_rpt_no,
  empty_1,
  empty_2,
  m_rec_info,
  m_symp_detail_code,
  empty_3,
  m_med_date,
  m_import_date
)
FROM  'c:/tmp/ndb/2016_01/MED_GAI/SMPL_MED_GAI_SJ.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
-------------------
-- T chouzai
-------------------
BEGIN;
COPY PHA.t_yk(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_pay_ins,
  empty_3,
  t_point_tbl,
  empty_5,
  empty_6,
  t_claim_date,
  t_multivol_info,
  empty_7,
  t_diag_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_YK.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_re(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  id1n,
  empty_5,
  empty_6,
  empty_7,
  t_dispense_date,
  t_sex_code,
  empty_8,
  empty_9,
  empty_10,
  empty_11,
  empty_12,
  empty_13,
  empty_14,
  spare_1,
  t_search_no,
  t_rec_spec_date,
  empty_15,
  empty_16,
  t_import_date,
  t_age_rank_1,
  t_age_rank_2,
  empty_17,
  t_mage_rank_1,
  t_mage_rank_2
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_RE.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_ho(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  empty_5,
  t_ps_recv_times,
  t_sum_point,
  spare_1,
  empty_6,
  empty_7,
  spare_2,
  empty_8,
  empty_9,
  empty_10,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_HO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_ko(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  empty_5,
  t_ko_ps_recv_times,
  t_ko_sum_point,
  spare_1,
  empty_6,
  spare_2,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_KO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_sh(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_ascen_no,
  t_dosage_code,
  t_usage_code,
  empty_3,
  t_drug_cost_sum,
  empty_4,
  empty_5,
  empty_6,
  empty_7,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_SH.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY PHA.t_cz(
--   t_abs_no,
--   t_rpt_no,
--   empty_1,
--   empty_2,
--   t_rec_info,
--   t_ps_date,
--   t_dispense_md,
--   t_ps_acpt_time,
--   t_disp_unit,
--   empty_3,
--   t_calc_code,
--   t_calc_no,
--   t_disp_code,
--   t_disp_point,
--   t_division_code,
--   t_last_unit,
--   t_cz_point,
--   spare_1,
--   empty_4,
--   t_add_code_1,
--   t_add_point_1,
--   empty_5,
--   t_add_code_2,
--   t_add_point_2,
--   empty_15,
--   t_add_code_3,
--   t_add_point_3,
--   empty_6,
--   t_add_code_4,
--   t_add_point_4,
--   empty_7,
--   t_add_code_5,
--   t_add_point_5,
--   empty_8,
--   t_add_code_6,
--   t_add_point_6,
--   empty_9,
--   t_add_code_7,
--   t_add_point_7,
--   empty_10,
--   t_add_code_8,
--   t_add_point_8,
--   empty_11,
--   t_add_code_9,
--   t_add_point_9,
--   empty_12,
--   t_add_code_10,
--   t_add_point_10,
--   t_onedose_days,
--   t_div_disp_category,
--   t_last_onedose_days,
--   t_ps_no,
--   t_ps_domest_no,
--   t_dispense_date,
--   t_import_date
-- )
-- FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_CZ.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;
BEGIN;
COPY PHA.t_iy(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  t_iy_code,
  t_iy_dose,
  spare_1,
  spare_2,
  t_confu_code,
  t_branch_code,
  t_unsui_blnd_code,
  t_onetime_dose,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_IY_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_to(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  t_to_code,
  t_to_utilization,
  t_to_unit_code,
  t_to_price,
  empty_4,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_TO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_co(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_comment_code,
  empty_3,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_CO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_tk(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_comment_code,
  empty_3,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_TK.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY PHA.t_ki(
--   t_abs_no,
--   t_rpt_no,
--   empty_1,
--   empty_2,
--   t_rec_info,
--   spare_1,
--   t_ps_acpt_time,
--   empty_3,
--   t_base_disp_code,
--   t_base_disp_point,
--   spare_2,
--   empty_4,
--   t_phr_man_code_1,
--   t_phr_man_times_1,
--   t_phr_man_point_1,
--   empty_5,
--   t_phr_man_code_2,
--   t_phr_man_times_2,
--   t_phr_man_point_2,
--   empty_6,
--   t_phr_man_code_3,
--   t_phr_man_times_3,
--   t_phr_man_point_3,
--   empty_7,
--   t_phr_man_code_4,
--   t_phr_man_times_4,
--   t_phr_man_point_4,
--   empty_8,
--   t_phr_man_code_5,
--   t_phr_man_times_5,
--   t_phr_man_point_5,
--   empty_9,
--   t_phr_man_code_6,
--   t_phr_man_times_6,
--   t_phr_man_point_6,
--   empty_11,
--   t_phr_man_code_7,
--   t_phr_man_times_7,
--   t_phr_man_point_7,
--   empty_12,
--   t_phr_man_code_8,
--   t_phr_man_times_8,
--   t_phr_man_point_8,
--   empty_13,
--   t_phr_man_code_9,
--   t_phr_man_times_9,
--   t_phr_man_point_9,
--   empty_14,
--   t_phr_man_code_10,
--   t_phr_man_times_10,
--   t_phr_man_point_10,
--   empty_15,
--   t_phr_man_code_11,
--   t_phr_man_times_11,
--   t_phr_man_point_11,
--   empty_16,
--   t_phr_man_code_12,
--   t_phr_man_times_12,
--   t_phr_man_point_12,
--   empty_17,
--   t_abst_phr_code_1,
--   t_abst_phr_times_1,
--   t_abst_phr_point_1,
--   empty_18,
--   t_abst_phr_code_2,
--   t_abst_phr_times_2,
--   t_abst_phr_point_2,
--   empty_19,
--   t_abst_phr_code_3,
--   t_abst_phr_times_3,
--   t_abst_phr_point_3,
--   t_last_disp_date,
--   t_last_disp_unit,
--   empty_20,
--   t_disp_badd_code_1,
--   t_disp_badd_times_1,
--   t_disp_badd_point_1,
--   empty_21,
--   t_disp_badd_code_2,
--   t_disp_badd_times_2,
--   t_disp_badd_point_2,
--   empty_22,
--   t_disp_badd_code_3,
--   t_disp_badd_times_3,
--   t_disp_badd_point_3,
--   empty_23,
--   t_disp_badd_code_4,
--   t_disp_badd_times_4,
--   t_disp_badd_point_4,
--   t_dispense_date,
--   t_import_date
-- )
-- FROM  'c:/tmp/ndb/2016_01/PHA/SMPL_PHA_KI.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;
-------------------
-- T GAI chouzaiここからあ
-------------------
BEGIN;
COPY PHA.t_yk_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_pay_ins,
  empty_3,
  t_point_tbl,
  empty_4,
  empty_5,
  t_claim_date,
  t_multivol_info,
  empty_6,
  t_diag_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_YK_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_re_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  id1n,
  empty_5,
  empty_6,
  empty_7,
  t_dispense_date,
  t_sex_code,
  empty_8,
  empty_9,
  empty_10,
  empty_11,
  empty_12,
  empty_13,
  empty_14,
  spare_1,
  t_search_no,
  t_rec_spec_date,
  empty_15,
  empty_16,
  t_import_date,
  t_age_rank_1,
  t_age_rank_2,
  empty_17,
  t_mage_rank_1,
  t_mage_rank_2
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_RE_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_ho_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  empty_5,
  t_ps_recv_times,
  t_sum_point,
  spare_1,
  empty_6,
  empty_7,
  spare_2,
  empty_8,
  empty_9,
  empty_10,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_HO_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_ko_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  empty_4,
  empty_5,
  t_ko_ps_recv_times,
  t_ko_sum_point,
  spare_1,
  empty_6,
  spare_2,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_KO_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_sh_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_ascen_no,
  t_dosage_code,
  t_usage_code,
  empty_3,
  t_drug_cost_sum,
  empty_4,
  empty_5,
  empty_6,
  empty_7,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_SH_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY PHA.t_cz_gai(
--   t_abs_no,
--   t_rpt_no,
--   empty_1,
--   empty_2,
--   t_rec_info,
--   t_ps_date,
--   t_dispense_md,
--   t_ps_acpt_time,
--   t_disp_unit,
--   empty_3,
--   t_calc_code,
--   t_calc_no,
--   t_disp_code,
--   t_disp_point,
--   t_division_code,
--   t_last_unit,
--   t_cz_point,
--   spare_1,
--   empty_4,
--   t_add_code_1,
--   t_add_point_1,
--   empty_5,
--   t_add_code_2,
--   t_add_point_2,
--   empty_15,
--   t_add_code_3,
--   t_add_point_3,
--   empty_6,
--   t_add_code_4,
--   t_add_point_4,
--   empty_7,
--   t_add_code_5,
--   t_add_point_5,
--   empty_8,
--   t_add_code_6,
--   t_add_point_6,
--   empty_9,
--   t_add_code_7,
--   t_add_point_7,
--   empty_11,
--   t_add_code_8,
--   t_add_point_8,
--   empty_12,
--   t_add_code_9,
--   t_add_point_9,
--   empty_13,
--   t_add_code_10,
--   t_add_point_10,
--   t_onedose_days,
--   t_div_disp_category,
--   t_last_onedose_days,
--   t_ps_no,
--   t_ps_domest_no,
--   t_dispense_date,
--   t_import_date
-- )
-- FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_CZ_GAI.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;
BEGIN;
COPY PHA.t_iy_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  t_iy_code,
  t_iy_dose,
  spare_1,
  spare_2,
  t_confu_code,
  t_branch_code,
  t_unsui_blnd_code,
  t_onetime_dose,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_IY_GAI_ANO.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_to_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  empty_3,
  t_to_code,
  t_to_utilization,
  t_to_unit_code,
  t_to_price,
  empty_4,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_TO_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_co_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_comment_code,
  empty_3,
  t_ps_no,
  t_ps_domest_no,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_CO_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
COPY PHA.t_tk_gai(
  t_abs_no,
  t_rpt_no,
  empty_1,
  empty_2,
  t_rec_info,
  t_comment_code,
  empty_3,
  t_dispense_date,
  t_import_date
)
FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_TK_GAI.csv'
WITH  (FORMAT CSV
       ,DELIMITER ','
       ,ENCODING 'SJIS'
);
COMMIT;
BEGIN;
-- COPY PHA.t_ki_gai(
--   t_abs_no,
--   t_rpt_no,
--   empty_1,
--   empty_2,
--   t_rec_info,
--   spare_1,
--   t_ps_acpt_time_ki,
--   empty_3,
--   t_base_disp_code,
--   t_base_disp_point,
--   spare_2,
--   empty_4,
--   t_phr_man_code_1,
--   t_phr_man_times_1,
--   t_phr_man_point_1,
--   empty_5,
--   t_phr_man_code_2,
--   t_phr_man_times_2,
--   t_phr_man_point_2,
--   empty_6,
--   t_phr_man_code_3,
--   t_phr_man_times_3,
--   t_phr_man_point_3,
--   empty_7,
--   t_phr_man_code_4,
--   t_phr_man_times_4,
--   t_phr_man_point_4,
--   empty_8,
--   t_phr_man_code_5,
--   t_phr_man_times_5,
--   t_phr_man_point_5,
--   empty_9,
--   t_phr_man_code_6,
--   t_phr_man_times_6,
--   t_phr_man_point_6,
--   empty_11,
--   t_phr_man_code_7,
--   t_phr_man_times_7,
--   t_phr_man_point_7,
--   empty_12,
--   t_phr_man_code_8,
--   t_phr_man_times_8,
--   t_phr_man_point_8,
--   empty_13,
--   t_phr_man_code_9,
--   t_phr_man_times_9,
--   t_phr_man_point_9,
--   empty_14,
--   t_phr_man_code_10,
--   t_phr_man_times_10,
--   t_phr_man_point_10,
--   empty_15,
--   t_phr_man_code_11,
--   t_phr_man_times_11,
--   t_phr_man_point_11,
--   empty_16,
--   t_phr_man_code_12,
--   t_phr_man_times_12,
--   t_phr_man_point_12,
--   empty_17,
--   t_abst_phr_code_1,
--   t_abst_phr_times_1,
--   t_abst_phr_point_1,
--   empty_18,
--   t_abst_phr_code_2,
--   t_abst_phr_times_2,
--   t_abst_phr_point_2,
--   empty_19,
--   t_abst_phr_code_3,
--   t_abst_phr_times_3,
--   t_abst_phr_point_3,
--   t_last_disp_date ,
--   t_last_disp_unit,
--   empty_20,
--   t_disp_badd_code_1,
--   t_disp_badd_times_1,
--   t_disp_badd_point_1,
--   empty_21,
--   t_disp_badd_code_2,
--   t_disp_badd_times_2,
--   t_disp_badd_point_2,
--   empty_22,
--   t_disp_badd_code_3,
--   t_disp_badd_times_3,
--   t_disp_badd_point_3,
--   empty_24,
--   t_disp_badd_code_4,
--   t_disp_badd_times_4,
--   t_disp_badd_point_4,
--   t_dispense_date,
--   t_import_date
-- )
-- FROM  'c:/tmp/ndb/2016_01/PHA_GAI/SMPL_PHA_KI_GAI.csv'
-- WITH  (FORMAT CSV
--        ,DELIMITER ','
--        ,ENCODING 'SJIS'
-- );
COMMIT;

