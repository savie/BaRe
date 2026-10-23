.class public final Lc73;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/io/Closeable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    iput-object p2, p0, Lc73;->b:Ljava/io/Closeable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lc73;->b:Ljava/io/Closeable;

    .line 7
    .line 8
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
