USE financeiroDB;
DELIMITER $$
CREATE PROCEDURE contas_a_pagar ( 
IN ID_transacao INT , IN nome_recebedor VARCHAR(255) ,IN CNPJ VARCHAR(255), IN CPF VARCHAR(255) , IN data_transacao date , IN valor DECIMAL (15,2),
IN forma_pagamento VARCHAR (255) , IN ID_funcionario INT 
)

BEGIN
INSERT INTO financeiroDB.contas_a_pagar(ID_transacao, nome_recebedor, CNPJ, CPF, data_transacao , valor , forma_pagamento , ID_funcionario )
	VALUES (ID_transacao, nome_recebedor, CNPJ, CPF, data_transacao , valor , forma_pagamento , ID_funcionario);
    END$$
    DELIMITER ;