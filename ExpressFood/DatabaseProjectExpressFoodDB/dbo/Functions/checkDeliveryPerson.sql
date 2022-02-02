
CREATE FUNCTION checkDeliveryPerson (@DeliveryPersonId int)
RETURNS VARCHAR(5)
AS
BEGIN
    IF ((SELECT RoleId FROM User_roles WHERE User_roleId = @DeliveryPersonId)=2)
        return 'True'
    return 'False'
END

GO

