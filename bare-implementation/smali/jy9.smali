.class public final enum Ljy9;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lm79;


# static fields
.field public static final enum b:Ljy9;

.field public static final enum c:Ljy9;

.field public static final enum d:Ljy9;

.field public static final enum e:Ljy9;

.field public static final enum f:Ljy9;

.field public static final enum k:Ljy9;

.field public static final enum n:Ljy9;

.field public static final synthetic p:[Ljy9;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljy9;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_HASH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ljy9;->b:Ljy9;

    .line 10
    .line 11
    new-instance v1, Ljy9;

    .line 12
    .line 13
    const-string v2, "SHA1"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ljy9;->c:Ljy9;

    .line 20
    .line 21
    new-instance v2, Ljy9;

    .line 22
    .line 23
    const-string v3, "SHA384"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ljy9;->d:Ljy9;

    .line 30
    .line 31
    new-instance v3, Ljy9;

    .line 32
    .line 33
    const-string v4, "SHA256"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ljy9;->e:Ljy9;

    .line 40
    .line 41
    new-instance v4, Ljy9;

    .line 42
    .line 43
    const-string v5, "SHA512"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Ljy9;->f:Ljy9;

    .line 50
    .line 51
    new-instance v5, Ljy9;

    .line 52
    .line 53
    const-string v6, "SHA224"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v7}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Ljy9;->k:Ljy9;

    .line 60
    .line 61
    new-instance v6, Ljy9;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const/4 v8, -0x1

    .line 65
    const-string v9, "UNRECOGNIZED"

    .line 66
    .line 67
    invoke-direct {v6, v9, v7, v8}, Ljy9;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v6, Ljy9;->n:Ljy9;

    .line 71
    .line 72
    filled-new-array/range {v0 .. v6}, [Ljy9;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Ljy9;->p:[Ljy9;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ljy9;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Ljy9;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Ljy9;->k:Ljy9;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Ljy9;->f:Ljy9;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    sget-object p0, Ljy9;->e:Ljy9;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    sget-object p0, Ljy9;->d:Ljy9;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    sget-object p0, Ljy9;->c:Ljy9;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_5
    sget-object p0, Ljy9;->b:Ljy9;

    .line 36
    .line 37
    return-object p0
.end method

.method public static values()[Ljy9;
    .locals 1

    .line 1
    sget-object v0, Ljy9;->p:[Ljy9;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljy9;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljy9;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Ljy9;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget-object v1, Ljy9;->n:Ljy9;

    .line 34
    .line 35
    if-eq p0, v1, :cond_0

    .line 36
    .line 37
    const-string v1, " number="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljy9;->zza()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v1, " name="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 p0, 0x3e

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public final zza()I
    .locals 1

    .line 1
    sget-object v0, Ljy9;->n:Ljy9;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ljy9;->a:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {}, Ll79;->c()V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method
