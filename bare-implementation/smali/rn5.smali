.class public abstract Lrn5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lfa6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Llk;

    .line 2
    .line 3
    invoke-direct {v0}, Llk;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    :try_start_1
    new-instance v0, Ltr9;

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ltr9;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_1
    new-instance v0, Lty3;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-direct {v0, v1}, Lty3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sput-object v0, Lrn5;->a:Lfa6;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Ljava/io/Reader;)Llc4;
    .locals 2

    .line 1
    sget-object v0, Lrn5;->a:Lfa6;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lfa6;->i(Ljava/io/Reader;)Lcz2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lgd;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lgd;-><init>(Lcz2;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, v0, Lgd;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lpc4;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lgd;->l(Llc4;)Llc4;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Lsn5;

    .line 31
    .line 32
    const-string v0, "Document has no root element"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    return-object v1
.end method
