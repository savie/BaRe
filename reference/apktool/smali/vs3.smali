.class public final Lvs3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxs3;


# instance fields
.field public final a:Lc73;

.field public final b:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Lc73;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvs3;->a:Lc73;

    .line 5
    .line 6
    iget-object p1, p1, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 7
    .line 8
    iput-object p1, p0, Lvs3;->b:Ljava/nio/channels/FileChannel;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lvs3;->a:Lc73;

    .line 2
    .line 3
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(J[BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lvs3;->b:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Lorg/swiftapps/filesystem/a;->a(Ljava/nio/channels/FileChannel;J[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
