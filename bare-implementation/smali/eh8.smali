.class public Leh8;
.super Lgf;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private email:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "email"
    .end annotation
.end field

.field private isEmailVerified:Z
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "emailverified"
    .end annotation
.end field

.field private totalQuota:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "quota"
    .end annotation
.end field

.field private usedQuota:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "usedquota"
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "userid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Leh8;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Leh8;->totalQuota:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Leh8;->usedQuota:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Leh8;->userId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leh8;->isEmailVerified:Z

    .line 2
    .line 3
    return p0
.end method
