.class public Lrl0;
.super Landroidx/fragment/app/o;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding::",
        "Ljk8;",
        ">",
        "Landroidx/fragment/app/o;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljk8;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lrl0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lrl0;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDestroyView()V
    .locals 1

    .line 1
    sget-object v0, Lhx0;->b:Lhx0;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lhx0;->l(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/o;->onDestroyView()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lrl0;->b:Ljk8;

    .line 11
    .line 12
    return-void
.end method
