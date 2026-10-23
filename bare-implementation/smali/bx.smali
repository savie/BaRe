.class public final Lbx;
.super Lgx;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Li40;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lq63;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbx;->a:Lq63;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lbx;->b:Li40;

    .line 14
    .line 15
    invoke-virtual {p1}, Lq63;->A()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lbx;->c:J

    .line 20
    .line 21
    iput-wide v0, p0, Lbx;->d:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbx;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
