.class public final Lrh8;
.super Lla6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Luw1;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/io/FilterOutputStream;Ljava/io/FilterOutputStream;Luw1;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lrh8;->a:Luw1;

    .line 2
    .line 3
    iput-object p4, p0, Lrh8;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrh8;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object p0, p0, Lrh8;->a:Luw1;

    .line 9
    .line 10
    invoke-interface {p0, p1, v0, v1}, Luw1;->a(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
