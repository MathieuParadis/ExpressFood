
CREATE FUNCTION checkClient (@clientId int)
RETURNS VARCHAR(5)
AS
BEGIN
    IF ((SELECT RoleId FROM User_roles WHERE User_roleId = @ClientId)=1)
        return 'True'
    return 'False'
END

GO

