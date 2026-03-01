-- Script de Simulação de Controle de Estoque Logístico
-- Criado para demonstrar habilidades em SQL e Modelagem de Dados

-- 1. Criar a tabela de produtos (Peças de Empilhadeiras, por exemplo)
CREATE TABLE estoque_pecas (
    id_peca INTEGER PRIMARY KEY,
    nome_peca TEXT NOT NULL,
    categoria TEXT,
    quantidade_atual INTEGER,
    estoque_minimo INTEGER,
    localizacao_armazem TEXT
);

-- 2. Inserir dados de exemplo (Simulando o dia a dia na Jungheinrich)
INSERT INTO estoque_pecas (id_peca, nome_peca, categoria, quantidade_atual, estoque_minimo, localizacao_armazem)
VALUES 
(101, 'Bateria Tracionária 48V', 'Elétrica', 5, 3, 'Corredor A-1'),
(102, 'Pneu Macio Frontal', 'Rodagem', 12, 15, 'Corredor B-2'),
(103, 'Garfo 1200mm', 'Mecânica', 8, 5, 'Corredor C-1'),
(104, 'Filtro de Óleo Hidráulico', 'Manutenção', 2, 10, 'Corredor D-4');

-- 3. Query para identificar o que precisa ser comprado (Estoque abaixo do mínimo)
-- Este é o tipo de relatório que um Analista de Dados/Logística gera
SELECT nome_peca, quantidade_atual, estoque_minimo, localizacao_armazem
FROM estoque_pecas
WHERE quantidade_atual < estoque_minimo;
