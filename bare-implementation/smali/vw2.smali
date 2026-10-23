.class public abstract Lvw2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[B

.field public static final b:Luw2;

.field public static final c:Ltw2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvw2;->a:[B

    .line 8
    .line 9
    new-instance v0, Luw2;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lvw2;->b:Luw2;

    .line 15
    .line 16
    new-instance v0, Ltw2;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lvw2;->c:Ltw2;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static b(Low0;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2, v1}, Low0;->o([BI)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    aget-byte v4, v2, v3

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aget-byte v4, v2, v4

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v1}, Low0;->o([BI)V

    .line 40
    .line 41
    .line 42
    goto :goto_0
.end method

.method public static h(Low0;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    new-array v0, p1, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Low0;->o([BI)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public abstract a(Low0;)J
.end method

.method public abstract c(Lzu6;)Ljava/lang/String;
.end method

.method public abstract d(Low0;)I
.end method

.method public abstract e(Low0;)J
.end method

.method public abstract f(Low0;)J
.end method

.method public abstract g(Low0;I)Ljava/lang/String;
.end method

.method public abstract i(Low0;J)V
.end method

.method public abstract j(Low0;I)V
.end method

.method public abstract k(Low0;J)V
.end method

.method public abstract l(Low0;J)V
.end method

.method public abstract m(Low0;Ljava/lang/String;)V
.end method
