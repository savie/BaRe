.class public final Lsc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lra2;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Llv1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsc2;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lsc2;->b:Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Le66;Lqa2;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lsc2;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Llv1;->d(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lsc2;->b:Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lqa2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-interface {p2, p0}, Lqa2;->b(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
