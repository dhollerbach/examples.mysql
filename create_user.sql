# Set variables
SET @user = 'username';
SET @pass = 'password';
SET @db1 = 'database.tables';

# Creates user and password
SET @createuser = CONCAT('CREATE USER "',@user,'" IDENTIFIED BY "',@pass,'" ');
PREPARE stmt FROM @createuser;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

# Grants privileges for db1
# Copy and paste this snippet for additional databases and add another db variable up top to match it
SET @grantpermissions = CONCAT('GRANT SELECT ON ',@db1, ' TO "',@user,'" ');
PREPARE stmt FROM @grantpermissions;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

# Outputs the grants
SET @showgrants = CONCAT('SHOW GRANTS FOR "',@user,'" ');
PREPARE stmt FROM @showgrants;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
