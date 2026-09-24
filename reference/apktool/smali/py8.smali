.class public final Lpy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# static fields
.field public static final f:Lnz8;


# instance fields
.field public a:Luy8;

.field public b:Luy8;

.field public c:Luy8;

.field public d:Llz8;

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpy8;->f:Lnz8;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lpy8;->f:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 1

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget-object p0, p0, Lpy8;->a:Luy8;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x10

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    invoke-direct {v0, p0}, Lnz8;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/16 v0, 0x10

    .line 5
    .line 6
    if-lt p3, v0, :cond_3

    .line 7
    .line 8
    new-instance v0, Luy8;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Luy8;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lpy8;->a:Luy8;

    .line 14
    .line 15
    add-int/lit8 v0, p2, 0x8

    .line 16
    .line 17
    new-instance v1, Luy8;

    .line 18
    .line 19
    invoke-direct {v1, p1, v0}, Luy8;-><init>([BI)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lpy8;->b:Luy8;

    .line 23
    .line 24
    add-int/lit8 v0, p2, 0x10

    .line 25
    .line 26
    add-int/lit8 v1, p3, -0x10

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Luy8;

    .line 33
    .line 34
    invoke-direct {v1, p1, v0}, Luy8;-><init>([BI)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lpy8;->c:Luy8;

    .line 38
    .line 39
    add-int/lit8 v0, p2, 0x18

    .line 40
    .line 41
    add-int/lit8 v1, p3, -0x18

    .line 42
    .line 43
    :cond_1
    const/4 p2, 0x4

    .line 44
    if-lt v1, p2, :cond_2

    .line 45
    .line 46
    new-instance p2, Llz8;

    .line 47
    .line 48
    invoke-direct {p2, p1, v0}, Llz8;-><init>([BI)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lpy8;->d:Llz8;

    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void

    .line 54
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    .line 55
    .line 56
    const-string p1, "Zip64 extended information must contain both size values in the local file header."

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final d()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lpy8;->a:Luy8;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lpy8;->b:Luy8;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lwx3;->a:[B

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lpy8;->b:Luy8;

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Luy8;->a()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v0, v3

    .line 38
    :goto_1
    iget-object p0, p0, Lpy8;->b:Luy8;

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Luy8;->a()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-object v1

    .line 50
    :cond_4
    const-string p0, "Zip64 extended information must contain both size values in the local file header."

    .line 51
    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public final e()[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Lpy8;->f()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lnz8;->a:I

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iget-object v1, p0, Lpy8;->a:Luy8;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Luy8;->a()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    iget-object v4, p0, Lpy8;->b:Luy8;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4}, Luy8;->a()[B

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x8

    .line 38
    .line 39
    :cond_1
    iget-object v4, p0, Lpy8;->c:Luy8;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4}, Luy8;->a()[B

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    :cond_2
    iget-object p0, p0, Lpy8;->d:Llz8;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iget-wide v4, p0, Llz8;->a:J

    .line 57
    .line 58
    invoke-static {v4, v5}, Llz8;->a(J)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-object v0
.end method

.method public final f()Lnz8;
    .locals 5

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget-object v1, p0, Lpy8;->a:Luy8;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    :goto_0
    iget-object v4, p0, Lpy8;->b:Luy8;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    move v4, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v3

    .line 20
    :goto_1
    add-int/2addr v1, v4

    .line 21
    iget-object v4, p0, Lpy8;->c:Luy8;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v2, v3

    .line 27
    :goto_2
    add-int/2addr v1, v2

    .line 28
    iget-object p0, p0, Lpy8;->d:Llz8;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    :cond_3
    add-int/2addr v1, v3

    .line 34
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final h([BII)V
    .locals 2

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    iput-object v0, p0, Lpy8;->e:[B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x1c

    .line 10
    .line 11
    if-lt p3, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lpy8;->c([BII)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/16 v0, 0x18

    .line 18
    .line 19
    if-ne p3, v0, :cond_1

    .line 20
    .line 21
    new-instance p3, Luy8;

    .line 22
    .line 23
    invoke-direct {p3, p1, p2}, Luy8;-><init>([BI)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lpy8;->a:Luy8;

    .line 27
    .line 28
    add-int/lit8 p3, p2, 0x8

    .line 29
    .line 30
    new-instance v0, Luy8;

    .line 31
    .line 32
    invoke-direct {v0, p1, p3}, Luy8;-><init>([BI)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lpy8;->b:Luy8;

    .line 36
    .line 37
    add-int/lit8 p2, p2, 0x10

    .line 38
    .line 39
    new-instance p3, Luy8;

    .line 40
    .line 41
    invoke-direct {p3, p1, p2}, Luy8;-><init>([BI)V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lpy8;->c:Luy8;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    rem-int/lit8 v0, p3, 0x8

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    new-instance v0, Llz8;

    .line 53
    .line 54
    add-int/2addr p2, p3

    .line 55
    sub-int/2addr p2, v1

    .line 56
    invoke-direct {v0, p1, p2}, Llz8;-><init>([BI)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lpy8;->d:Llz8;

    .line 60
    .line 61
    :cond_2
    return-void
.end method
