.class public final Lsw8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# static fields
.field public static final d:Lnz8;

.field public static final e:Lnz8;

.field public static final f:Lnz8;


# instance fields
.field public a:Luy8;

.field public b:Luy8;

.field public c:Luy8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsw8;->d:Lnz8;

    .line 9
    .line 10
    new-instance v0, Lnz8;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lsw8;->e:Lnz8;

    .line 17
    .line 18
    new-instance v0, Lnz8;

    .line 19
    .line 20
    const/16 v1, 0x18

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lsw8;->f:Lnz8;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Luy8;->b:Luy8;

    .line 5
    .line 6
    iput-object v0, p0, Lsw8;->a:Luy8;

    .line 7
    .line 8
    iput-object v0, p0, Lsw8;->b:Luy8;

    .line 9
    .line 10
    iput-object v0, p0, Lsw8;->c:Luy8;

    .line 11
    .line 12
    return-void
.end method

.method public static g(Luy8;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Luy8;->b:Luy8;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Luy8;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Luy8;->a:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Lha3;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lsw8;->d:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 1

    .line 1
    new-instance p0, Lnz8;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p2, p2, 0x4

    .line 3
    .line 4
    :goto_0
    add-int/lit8 v0, p2, 0x4

    .line 5
    .line 6
    if-gt v0, p3, :cond_1

    .line 7
    .line 8
    new-instance v0, Lnz8;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lnz8;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x2

    .line 14
    .line 15
    sget-object v2, Lsw8;->e:Lnz8;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lnz8;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sub-int/2addr p3, v1

    .line 24
    const/16 v0, 0x1a

    .line 25
    .line 26
    if-lt p3, v0, :cond_1

    .line 27
    .line 28
    new-instance p3, Lnz8;

    .line 29
    .line 30
    invoke-direct {p3, p1, v1}, Lnz8;-><init>([BI)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lsw8;->f:Lnz8;

    .line 34
    .line 35
    invoke-virtual {v0, p3}, Lnz8;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    add-int/lit8 p3, p2, 0x4

    .line 42
    .line 43
    new-instance v0, Luy8;

    .line 44
    .line 45
    invoke-direct {v0, p1, p3}, Luy8;-><init>([BI)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lsw8;->a:Luy8;

    .line 49
    .line 50
    add-int/lit8 p3, p2, 0xc

    .line 51
    .line 52
    new-instance v0, Luy8;

    .line 53
    .line 54
    invoke-direct {v0, p1, p3}, Luy8;-><init>([BI)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lsw8;->b:Luy8;

    .line 58
    .line 59
    add-int/lit8 p2, p2, 0x14

    .line 60
    .line 61
    new-instance p3, Luy8;

    .line 62
    .line 63
    invoke-direct {p3, p1, p2}, Luy8;-><init>([BI)V

    .line 64
    .line 65
    .line 66
    iput-object p3, p0, Lsw8;->c:Luy8;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    new-instance p2, Lnz8;

    .line 70
    .line 71
    invoke-direct {p2, p1, v1}, Lnz8;-><init>([BI)V

    .line 72
    .line 73
    .line 74
    iget p2, p2, Lnz8;->a:I

    .line 75
    .line 76
    add-int/lit8 p2, p2, 0x2

    .line 77
    .line 78
    add-int/2addr p2, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public final d()[B
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lsw8;->e:Lnz8;

    .line 6
    .line 7
    invoke-virtual {v1}, Lnz8;->a()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lsw8;->f:Lnz8;

    .line 18
    .line 19
    invoke-virtual {v1}, Lnz8;->a()[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lsw8;->a:Luy8;

    .line 28
    .line 29
    invoke-virtual {v1}, Luy8;->a()[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lsw8;->b:Luy8;

    .line 39
    .line 40
    invoke-virtual {v1}, Luy8;->a()[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lsw8;->c:Luy8;

    .line 50
    .line 51
    invoke-virtual {p0}, Luy8;->a()[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/16 v1, 0x18

    .line 56
    .line 57
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public final e()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsw8;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lsw8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lsw8;

    .line 7
    .line 8
    iget-object v0, p0, Lsw8;->a:Luy8;

    .line 9
    .line 10
    iget-object v2, p1, Lsw8;->a:Luy8;

    .line 11
    .line 12
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lsw8;->b:Luy8;

    .line 19
    .line 20
    iget-object v2, p1, Lsw8;->b:Luy8;

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lsw8;->c:Luy8;

    .line 29
    .line 30
    iget-object p1, p1, Lsw8;->c:Luy8;

    .line 31
    .line 32
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_0
    return v1
.end method

.method public final f()Lnz8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsw8;->b()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final h([BII)V
    .locals 1

    .line 1
    sget-object v0, Luy8;->b:Luy8;

    .line 2
    .line 3
    iput-object v0, p0, Lsw8;->a:Luy8;

    .line 4
    .line 5
    iput-object v0, p0, Lsw8;->b:Luy8;

    .line 6
    .line 7
    iput-object v0, p0, Lsw8;->c:Luy8;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lsw8;->c([BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lsw8;->a:Luy8;

    .line 2
    .line 3
    const/16 v1, -0x7b

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v2, v0, Luy8;->a:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v1, v0

    .line 14
    :cond_0
    iget-object v0, p0, Lsw8;->b:Luy8;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v2, v0, Luy8;->a:J

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    xor-int/2addr v1, v0

    .line 31
    :cond_1
    iget-object p0, p0, Lsw8;->c:Luy8;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-wide v2, p0, Luy8;->a:J

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/16 v0, 0x16

    .line 42
    .line 43
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    xor-int/2addr p0, v1

    .line 48
    return p0

    .line 49
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x000A Zip Extra Field: Modify:["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsw8;->a:Luy8;

    .line 9
    .line 10
    invoke-static {v1}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "]  Access:["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lsw8;->b:Luy8;

    .line 23
    .line 24
    invoke-static {v1}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "]  Create:["

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lsw8;->c:Luy8;

    .line 37
    .line 38
    invoke-static {p0}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "] "

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
