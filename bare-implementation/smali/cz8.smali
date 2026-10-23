.class public final Lcz8;
.super Luu0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(JJLjava/nio/channels/FileChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Luu0;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcz8;->d:Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcz8;->d:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    return p0
.end method
