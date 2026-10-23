.class public Lsu1;
.super Lgf;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private expires:Ljava/util/Date;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "expires"
    .end annotation
.end field

.field private hosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "hosts"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "path"
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
.method public final d()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu1;->expires:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu1;->hosts:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu1;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
