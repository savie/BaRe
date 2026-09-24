.class public Lv40;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile a:Lv40;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lv40;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "org.tukaani.xz.ArrayCache"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "Dummy"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    :cond_0
    const-string v3, "Basic"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sput-object v0, Lv40;->a:Lv40;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/Error;

    .line 35
    .line 36
    const-string v2, "Unsupported value \'"

    .line 37
    .line 38
    const-string v3, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    .line 39
    .line 40
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    sget-object v0, Luo0;->a:Lvo0;

    .line 49
    .line 50
    sput-object v0, Lv40;->a:Lv40;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 0

    .line 1
    new-array p0, p1, [B

    .line 2
    .line 3
    return-object p0
.end method

.method public b(IZ)[I
    .locals 0

    .line 1
    new-array p0, p1, [I

    .line 2
    .line 3
    return-object p0
.end method

.method public c([B)V
    .locals 0

    .line 1
    return-void
.end method

.method public d([I)V
    .locals 0

    .line 1
    return-void
.end method
