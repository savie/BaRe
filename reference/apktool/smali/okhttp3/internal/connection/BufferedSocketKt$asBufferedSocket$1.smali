.class public final Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/BufferedSocket;


# instance fields
.field public final a:Ll40;

.field public final b:Ltf6;

.field public final c:Lrf6;


# direct methods
.method public constructor <init>(Ll40;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->a:Ll40;

    .line 5
    .line 6
    iget-object v0, p1, Ll40;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lwf2;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Ltf6;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ltf6;-><init>(Lij7;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Ltf6;

    .line 19
    .line 20
    iget-object p1, p1, Ll40;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lvf2;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lrf6;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lrf6;-><init>(Lnh7;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lrf6;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lnh7;
    .locals 0

    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lrf6;

    return-object p0
.end method

.method public final a()Lyw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lrf6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->a:Ll40;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll40;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getSource()Lij7;
    .locals 0

    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Ltf6;

    return-object p0
.end method

.method public final getSource()Lzw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Ltf6;

    .line 2
    .line 3
    return-object p0
.end method
