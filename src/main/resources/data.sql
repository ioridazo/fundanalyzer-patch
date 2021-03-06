-- test data
-- update analysis result
insert into industry(name, created_at)
values ('i2', sysdate)
;

insert into company(code, company_name, industry_id, edinet_code, created_at, updated_at)
values ('00000', '', 1, 'ec0000', sysdate, sysdate),
       ('99999', '', 1, 'ec9999', sysdate, sysdate)
;

insert into document (document_id, edinet_code, document_type_code, document_period, submit_date, created_at,
                      updated_at)
values ('TEST0008', 'ec9999', '120', '2021-03-28', sysdate, sysdate, sysdate),
       ('TEST0009', 'ec0000', '120', '2021-04-03', sysdate, sysdate, sysdate)
;

insert into analysis_result (company_code, document_period, corporate_value, document_type_code, submit_date,
                             document_id, created_at)
values ('00000', '2021-04-03', 10, '000', sysdate, 'TEST0008', sysdate)
;

-- update financial statement
insert into industry(name, created_at)
values ('i1', sysdate)
;

insert into company(company_name, industry_id, edinet_code, created_at, updated_at)
values ('', 1, 'ec0001', sysdate, sysdate)
;

insert into document (document_id, document_type_code, document_period, submit_date, created_at, updated_at)
values ('TEST0006', '120', '2021-03-28', sysdate, sysdate, sysdate),
       ('TEST0007', '120', '2021-03-28', sysdate, sysdate, sysdate)
;

insert into financial_statement (edinet_code, financial_statement_id, subject_id, period_start, period_end,
                                 document_type_code, submit_date, document_id, created_at)
values ('ec0001', '1', '1', '2021-03-28', '2021-03-28', '000', sysdate, 'TEST0006', sysdate)
;

insert into edinet_document (doc_id, edinet_code, doc_type_code, period_start, period_end, submit_date_time,
                             parent_doc_id, created_at)
values ('TEST0007', 'ec0001', 120, '2021-03-28', '2021-03-28', '2021-04-03 09:00', NULL, sysdate)
;

-- document period
insert into edinet_document (doc_id, doc_type_code, period_end, parent_doc_id, created_at)
values ('TEST0001', '120', '2021-03-28', NULL, sysdate),
       ('TEST0002', '130', NULL, 'TEST0001', sysdate),
       ('TEST0003', '120', '2021-03-28', NULL, sysdate),
       ('TEST0004', '130', NULL, 'TEST0003', sysdate),
       ('TEST0005', '130', NULL, 'TEST0003', sysdate)
;

insert into document (document_id, edinet_code, document_type_code, document_period, submit_date, created_at,
                      updated_at)
values ('TEST0001', 'ec0000', '120', '2021-03-28', sysdate, sysdate, sysdate),
       ('TEST0002', 'ec0000', '130', NULL, sysdate, sysdate, sysdate),
       ('TEST0003', 'ec0000', '120', '2021-03-28', sysdate, sysdate, sysdate),
       ('TEST0004', 'ec0000', '130', NULL, sysdate, sysdate, sysdate),
       ('TEST0005', 'ec0000', '130', NULL, sysdate, sysdate, sysdate)
;

-- scraping_keyword
insert
into scraping_keyword (financial_statement_id, keyword, remarks)
values ('1', 'jpcrp_cor:ConsolidatedBalanceSheetTextBlock', '?????????????????????'),
       ('1', 'jpcrp_cor:BalanceSheetTextBlock', '???????????????'),
       ('2', 'jpcrp_cor:ConsolidatedStatementOfIncomeTextBlock', '?????????????????????'),
       ('2', 'jpcrp_cor:StatementOfIncomeTextBlock', '???????????????'),
       ('4', 'jpcrp_cor:IssuedSharesTotalNumberOfSharesEtcTextBlock', '????????????')
;

-- bs_subject
insert into bs_subject (outline_subject_id, detail_subject_id, name)
values ('1', '3', '????????????'),
       ('1', '1', '??????????????????'),
       ('2', null, '??????????????????'),
       ('3', null, '??????????????????'),
       ('4', '2', '????????????????????????'),
       ('4', '1', '??????????????????????????????'),
       ('5', '1', '??????????????????'),
       ('6', null, '????????????'),
       ('7', null, '????????????'),
       ('8', '3', '????????????'),
       ('8', '1', '??????????????????'),
       ('9', '3', '????????????'),
       ('9', '1', '??????????????????'),
       ('10', null, '????????????'),
       ('11', null, '???????????????'),
       ('12', null, '?????????'),
       ('13', null, '???????????????'),
       ('14', null, '???????????????'),
       ('15', null, '?????????????????????'),
       ('1', '2', '???????????????'),
       ('5', '2', '???????????????'),
       ('8', '2', '???????????????'),
       ('9', '2', '???????????????')
--  (null, '1', '??????????????????'), (null, '1', '??????????????????????????????'), (null, '1', '??????????????????'), (null, '1', '?????????????????????'), (null, '1', '????????????'),
--  (null, '1', '?????????'), (null, '1', '???????????????'),
--  (null, '2', '??????'), (null, '2', '?????????????????????'), (null, '2', '??????????????????'), (null, '2', '??????????????????'), (null, '2', '?????????????????????'),
--  (null, '2', '??????????????????????????????'), (null, '2', '?????????'), (null, '2', '?????????????????????'), (null, '2', '?????????????????????'), (null, '2', '??????????????????'),
--  (null, '2', '?????????????????????'), (null, '2', '??????????????????????????????'), (null, '2', '???????????????????????????'), (null, '2', '?????????????????????'), (null, '2', '???????????????????????????????????????'),
--  (null, '2', '??????'), (null, '2', '???????????????'), (null, '2', '????????????'), (null, '2', '?????????????????????'), (null, '2', '????????????????????????'),
--  (null, '2', '????????????????????????'), (null, '2', '?????????????????????'), (null, '2', '????????????????????????????????????'), (null, '2', '???????????????'), (null, '2', '?????????????????????'),
--  (null, '2', '???????????????????????????'), (null, '2', '????????????????????????'), (null, '2', '?????????????????????'), (null, '2', '????????????????????????????????????'), (null, '2', '?????????????????????????????????'),
--  (null, '2', '?????????????????????'), (null, '2', '?????????????????????????????????????????????'), (null, '2', '????????????'), (null, '2', '?????????????????????'), (null, '2', '????????????????????????'),
--  (null, '3', '?????????'), (null, '3', '???????????????'), (null, '3', '?????????'), (null, '3', '????????????????????????'),
--  (null, '4', '???????????????'), (null, '4', '?????????????????????'), (null, '4', '?????????????????????????????????'), (null, '4', '??????????????????'),
--  (null, '6', '????????????????????????'), (null, '6', '??????????????????'),
--  (null, '8', '???????????????'), (null, '8', '???????????????'), (null, '8', '8????????????????????????????????????'), (null, '8', '8????????????????????????????????????'), (null, '8', '?????????'),
--  (null, '8', '????????????'), (null, '8', '??????????????????'), (null, '8', '??????????????????'), (null, '8', '?????????'), (null, '8', '?????????'),
--  (null, '9', '???????????????'), (null, '9', '???????????????'), (null, '9', '???????????????????????????'), (null, '9', '??????????????????'),
--  (null, '11', '????????????'),
--  (null, '12', '???????????????'), (null, '12', '?????????????????????'), (null, '12', '?????????????????????????????????????????????????????????'), (null, '12', '???????????????'),
--  (null, '13', '?????????????????????'),
-- TODO ????????????
;

-- TODO ???????????????Enum?????????
-- pl_subject
insert into pl_subject (outline_subject_id, detail_subject_id, name)
values ('1', null, '????????????'),
--  (null, '1', '??????????????????'), (null, '1', '???????????????????????????'), (null, '1', '??????????????????'),
       ('2', null, '????????????'),
--  (null, '2', '??????????????????'), (null, '2', '?????????????????????'), (null, '2', '??????????????????'), (null, '2', '?????????????????????????????????????????????'), (null, '2', '????????????'),
--  (null, '2', '?????????????????????'), (null, '2', '?????????????????????'), (null, '2', '??????????????????'),
       ('3', '1', '????????????'),
       ('3', '2', '???????????????????????????????????????'),
       ('3', '3', '??????????????????????????????(???)'),
       ('3', '4', '?????????????????????'),
       ('3', '5', '????????????(???)'),
       ('3', '6', '??????????????????????????????'),
       ('4', null, '???????????????'),
--  (null, '4', '????????????'), (null, '4', '?????????????????????'), (null, '4', '???????????????'), (null, '4', '?????????'), (null, '4', '?????????????????????'),
       ('5', null, '???????????????'),
--  (null, '5', '????????????'), (null, '5', '?????????????????????'), (null, '5', '??????????????????????????????'), (null, '5', '???????????????'), (null, '5', '?????????'),
--  (null, '5', '?????????????????????'),
       ('6', null, '????????????'),
       ('7', null, '????????????'),
--  (null, '7', '?????????????????????'), (null, '7', '??????????????????'),
       ('8', null, '????????????????????????'),
       ('9', null, '????????????????????????????????????'),
       ('10', null, '??????????????????'),
       ('11', null, '???????????????'),
       ('12', null, '??????????????????'),
       ('13', null, '?????????????????????????????????????????????????????????')
;
