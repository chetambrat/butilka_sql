ALTER TABLE "mvd_users"
ADD CONSTRAINT proper_email CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}+$');

ALTER TABLE "mvd_users"
ADD CONSTRAINT proper_phone CHECK (phone ~* '^+79[0-9]{9}$');

ALTER TABLE "lohs"
ADD CONSTRAINT proper_passport CHECK (passportSerialNumber ~* '^[0-9]{10}$');