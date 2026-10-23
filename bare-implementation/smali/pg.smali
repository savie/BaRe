.class public final Lpg;
.super Lrg;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpg;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lpg;->b:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lpg;->c:Z

    .line 9
    .line 10
    iput-boolean p5, p0, Lpg;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpg;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpg;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpg;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpg;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
