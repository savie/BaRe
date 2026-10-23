.class public final Lqk4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lqk4;


# instance fields
.field public final a:Lpk4;

.field public final b:Lpk4;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lqk4;

    .line 2
    .line 3
    sget-object v1, Lpk4;->e:Lpk4;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lqk4;->e:Lqk4;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lpk4;->e:Lpk4;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    :cond_0
    iput-object p1, p0, Lqk4;->a:Lpk4;

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    move-object p2, v0

    .line 14
    :cond_1
    iput-object p2, p0, Lqk4;->b:Lpk4;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const-class p2, Ljava/lang/Void;

    .line 18
    .line 19
    if-ne p3, p2, :cond_2

    .line 20
    .line 21
    move-object p3, p1

    .line 22
    :cond_2
    iput-object p3, p0, Lqk4;->c:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne p4, p2, :cond_3

    .line 25
    .line 26
    move-object p4, p1

    .line 27
    :cond_3
    iput-object p4, p0, Lqk4;->d:Ljava/lang/Class;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lqk4;)Lqk4;
    .locals 10

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    sget-object v0, Lqk4;->e:Lqk4;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p1, Lqk4;->a:Lpk4;

    .line 9
    .line 10
    iget-object v1, p1, Lqk4;->b:Lpk4;

    .line 11
    .line 12
    iget-object v2, p1, Lqk4;->c:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object p1, p1, Lqk4;->d:Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v3, Lpk4;->e:Lpk4;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    iget-object v6, p0, Lqk4;->a:Lpk4;

    .line 21
    .line 22
    if-eq v0, v6, :cond_1

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    move v7, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v7, v4

    .line 29
    :goto_0
    iget-object v8, p0, Lqk4;->b:Lpk4;

    .line 30
    .line 31
    if-eq v1, v8, :cond_2

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    move v3, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v3, v4

    .line 38
    :goto_1
    iget-object v9, p0, Lqk4;->c:Ljava/lang/Class;

    .line 39
    .line 40
    if-ne v2, v9, :cond_3

    .line 41
    .line 42
    if-eq p1, v9, :cond_4

    .line 43
    .line 44
    :cond_3
    move v4, v5

    .line 45
    :cond_4
    if-eqz v7, :cond_6

    .line 46
    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    new-instance p0, Lqk4;

    .line 50
    .line 51
    invoke-direct {p0, v0, v1, v2, p1}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_5
    new-instance p0, Lqk4;

    .line 56
    .line 57
    invoke-direct {p0, v0, v8, v2, p1}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_6
    if-eqz v3, :cond_7

    .line 62
    .line 63
    new-instance p0, Lqk4;

    .line 64
    .line 65
    invoke-direct {p0, v6, v1, v2, p1}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_7
    if-eqz v4, :cond_8

    .line 70
    .line 71
    new-instance p0, Lqk4;

    .line 72
    .line 73
    invoke-direct {p0, v6, v8, v2, p1}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    :cond_8
    :goto_2
    return-object p0
.end method

.method public final b(Lpk4;)Lqk4;
    .locals 3

    .line 1
    iget-object v0, p0, Lqk4;->a:Lpk4;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lqk4;

    .line 7
    .line 8
    iget-object v1, p0, Lqk4;->c:Ljava/lang/Class;

    .line 9
    .line 10
    iget-object v2, p0, Lqk4;->d:Ljava/lang/Class;

    .line 11
    .line 12
    iget-object p0, p0, Lqk4;->b:Lpk4;

    .line 13
    .line 14
    invoke-direct {v0, p1, p0, v1, v2}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lqk4;

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    check-cast p1, Lqk4;

    .line 17
    .line 18
    iget-object v0, p1, Lqk4;->a:Lpk4;

    .line 19
    .line 20
    iget-object v1, p0, Lqk4;->a:Lpk4;

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    iget-object v0, p1, Lqk4;->b:Lpk4;

    .line 25
    .line 26
    iget-object v1, p0, Lqk4;->b:Lpk4;

    .line 27
    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p1, Lqk4;->c:Ljava/lang/Class;

    .line 31
    .line 32
    iget-object v1, p0, Lqk4;->c:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    iget-object p1, p1, Lqk4;->d:Ljava/lang/Class;

    .line 37
    .line 38
    iget-object p0, p0, Lqk4;->d:Ljava/lang/Class;

    .line 39
    .line 40
    if-ne p1, p0, :cond_3

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqk4;->a:Lpk4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    shl-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iget-object p0, p0, Lqk4;->b:Lpk4;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "JsonInclude.Value(value="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lqk4;->a:Lpk4;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",content="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lqk4;->b:Lpk4;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ".class"

    .line 29
    .line 30
    iget-object v2, p0, Lqk4;->c:Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const-string v3, ",valueFilter="

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lqk4;->d:Ljava/lang/Class;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string v2, ",contentFilter="

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    const/16 p0, 0x29

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
