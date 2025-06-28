TYPE=TRIGGERS
triggers='CREATE DEFINER=`myuser`@`%` TRIGGER IF NOT EXISTS before_invoice_insert BEFORE INSERT ON invoices FOR EACH ROW SET NEW.converted_amount_pre_vat = NEW.original_amount * NEW.exchange_rate, NEW.total_amount_with_vat = (NEW.original_amount * NEW.exchange_rate) * (1 + NEW.vat / 100)' 'CREATE DEFINER=`myuser`@`%` TRIGGER IF NOT EXISTS before_invoice_update BEFORE UPDATE ON invoices FOR EACH ROW SET NEW.converted_amount_pre_vat = NEW.original_amount * NEW.exchange_rate, NEW.total_amount_with_vat = (NEW.original_amount * NEW.exchange_rate) * (1 + NEW.vat / 100)'
sql_modes=1411383304 1411383304
definers='myuser@%' 'myuser@%'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_uca1400_ai_ci' 'utf8mb4_uca1400_ai_ci'
db_cl_names='utf8mb4_uca1400_ai_ci' 'utf8mb4_uca1400_ai_ci'
created=1749689068377208 1749689068386138
