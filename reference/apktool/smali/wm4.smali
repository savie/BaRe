.class public final Lwm4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lum4;

.field public final b:Ltm4;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Class;

.field public final e:Z

.field public final f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lwm4;->d:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p1, p0, Lwm4;->a:Lum4;

    .line 7
    .line 8
    iput-object p2, p0, Lwm4;->b:Ltm4;

    .line 9
    .line 10
    iput-object p3, p0, Lwm4;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lwm4;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lwm4;->f:Ljava/lang/Boolean;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)Lwm4;
    .locals 7

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    move-object v3, p2

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object p2, p0, Lum4;->a:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const-string p2, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_2
    if-eqz p3, :cond_4

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Class;->isAnnotation()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_3
    :goto_3
    move-object v4, p3

    .line 30
    goto :goto_5

    .line 31
    :cond_4
    :goto_4
    const/4 p3, 0x0

    .line 32
    goto :goto_3

    .line 33
    :goto_5
    new-instance v0, Lwm4;

    .line 34
    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p1

    .line 37
    move v5, p4

    .line 38
    move-object v6, p5

    .line 39
    invoke-direct/range {v0 .. v6}, Lwm4;-><init>(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lwm4;

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    check-cast p1, Lwm4;

    .line 18
    .line 19
    iget-object v2, p0, Lwm4;->a:Lum4;

    .line 20
    .line 21
    iget-object v3, p1, Lwm4;->a:Lum4;

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lwm4;->b:Ltm4;

    .line 26
    .line 27
    iget-object v3, p1, Lwm4;->b:Ltm4;

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lwm4;->d:Ljava/lang/Class;

    .line 32
    .line 33
    iget-object v3, p1, Lwm4;->d:Ljava/lang/Class;

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-boolean v2, p0, Lwm4;->e:Z

    .line 38
    .line 39
    iget-boolean v3, p1, Lwm4;->e:Z

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lwm4;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lwm4;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lwm4;->f:Ljava/lang/Boolean;

    .line 54
    .line 55
    iget-object p1, p1, Lwm4;->f:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lwm4;->a:Lum4;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    mul-int/2addr v1, v2

    .line 16
    iget-object v3, p0, Lwm4;->b:Ltm4;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v0

    .line 26
    :goto_1
    add-int/2addr v1, v3

    .line 27
    mul-int/2addr v1, v2

    .line 28
    iget-object v3, p0, Lwm4;->c:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v3, v0

    .line 38
    :goto_2
    add-int/2addr v1, v3

    .line 39
    mul-int/2addr v1, v2

    .line 40
    iget-object v3, p0, Lwm4;->d:Ljava/lang/Class;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :cond_3
    add-int/2addr v1, v0

    .line 49
    mul-int/2addr v1, v2

    .line 50
    iget-object v0, p0, Lwm4;->f:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v3, -0x11

    .line 57
    .line 58
    const/16 v4, 0xb

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    move v0, v4

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v0, v3

    .line 65
    :goto_3
    add-int/2addr v1, v0

    .line 66
    mul-int/2addr v1, v2

    .line 67
    iget-boolean p0, p0, Lwm4;->e:Z

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    move v3, v4

    .line 72
    :cond_5
    add-int/2addr v1, v3

    .line 73
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lwm4;->d:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "NULL"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "JsonTypeInfo.Value(idType="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lwm4;->a:Lum4;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ",includeAs="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lwm4;->b:Ltm4;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",propertyName="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ",defaultImpl="

    .line 40
    .line 41
    const-string v3, ",idVisible="

    .line 42
    .line 43
    iget-object v4, p0, Lwm4;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v4, v2, v0, v3}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v0, p0, Lwm4;->e:Z

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ",requireTypeIdForSubtypes="

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lwm4;->f:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
