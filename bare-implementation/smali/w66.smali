.class public final Lw66;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:Lu66;

.field public final synthetic c:Lb76;


# direct methods
.method public constructor <init>(Lb76;Lu66;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw66;->c:Lb76;

    .line 5
    .line 6
    iput p3, p0, Lw66;->a:I

    .line 7
    .line 8
    iput-object p2, p0, Lw66;->b:Lu66;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw66;->c:Lb76;

    .line 2
    .line 3
    iget-object v1, v0, Lb76;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget v4, p0, Lw66;->a:I

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    add-long/2addr v2, v4

    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lb76;->c:Luv4;

    .line 17
    .line 18
    iget-object p0, p0, Lw66;->b:Lu66;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Luv4;->d(Lu66;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, v1, Luv4;->b:Lu66;

    .line 27
    .line 28
    if-eq p0, v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lu66;->b:Lu66;

    .line 31
    .line 32
    iget-object v3, p0, Lu66;->c:Lu66;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iput-object v3, v1, Luv4;->a:Lu66;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object v3, v2, Lu66;->c:Lu66;

    .line 41
    .line 42
    iput-object v4, p0, Lu66;->b:Lu66;

    .line 43
    .line 44
    :goto_0
    if-nez v3, :cond_1

    .line 45
    .line 46
    iput-object v2, v1, Luv4;->b:Lu66;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iput-object v2, v3, Lu66;->b:Lu66;

    .line 50
    .line 51
    iput-object v4, p0, Lu66;->c:Lu66;

    .line 52
    .line 53
    :goto_1
    iget-object v2, v1, Luv4;->b:Lu66;

    .line 54
    .line 55
    iput-object p0, v1, Luv4;->b:Lu66;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iput-object p0, v1, Luv4;->a:Lu66;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iput-object p0, v2, Lu66;->c:Lu66;

    .line 63
    .line 64
    iput-object v2, p0, Lu66;->b:Lu66;

    .line 65
    .line 66
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lb76;->e()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
