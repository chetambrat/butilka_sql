ALTER TABLE "mvd_users" DROP CONSTRAINT proper_email;

ALTER TABLE "mvd_users" DROP CONSTRAINT proper_phone;

ALTER TABLE "lohs" DROP CONSTRAINT proper_passport;

ALTER TABLE "lohs" DROP CONSTRAINT proper_sub_code;

ALTER TABLE "mvd_users"
ADD CONSTRAINT proper_email CHECK (email ~* '^[A-Za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z]{2,}$');

ALTER TABLE "mvd_users"
ADD CONSTRAINT proper_phone CHECK (phone ~* '^\+79[0-9]{9}$');

ALTER TABLE "lohs"
ADD CONSTRAINT proper_passport CHECK (passport_serial_number ~* '^[0-9]{10}$');

ALTER TABLE "lohs"
ADD CONSTRAINT proper_sub_code CHECK (subdivision_code ~* '^[0-9]{3}-[0-9]{3}$');

ALTER TABLE "mvd_users"
ADD UNIQUE (username);

ALTER TABLE "lohs"
ADD UNIQUE (passport_serial_number);