.class public final Lrf2;
.super Llz2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lrf2;


# instance fields
.field public c:Lwx1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lrf2;

    .line 2
    .line 3
    sget v2, Ljz7;->c:I

    .line 4
    .line 5
    sget v3, Ljz7;->d:I

    .line 6
    .line 7
    sget-wide v4, Ljz7;->e:J

    .line 8
    .line 9
    sget-object v6, Ljz7;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, Lrx1;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lwx1;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lwx1;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lrf2;->c:Lwx1;

    .line 20
    .line 21
    sput-object v0, Lrf2;->d:Lrf2;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final j(Lox1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lrf2;->c:Lwx1;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lwx1;->b(Ljava/lang/Runnable;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object p0
.end method
