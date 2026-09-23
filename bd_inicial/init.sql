CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.frutas (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    nome text NOT NULL,
    CONSTRAINT frutas_pkey PRIMARY KEY (id)
);

INSERT INTO public.frutas (nome) VALUES 
('Morango'),
('Banana'),
('Abacaxi'),
('Uva');