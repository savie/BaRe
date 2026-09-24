.class public final Li84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/util/stream/Stream;


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li84;->a:Ljava/util/stream/Stream;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/util/stream/Stream;)Li84;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Li84;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Li84;-><init>(Ljava/util/stream/Stream;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Li84;->a(Ljava/util/stream/Stream;)Li84;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Li84;->a:Ljava/util/stream/Stream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
