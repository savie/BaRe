.class public final Ld75;
.super Lhx0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic c:Lf75;


# direct methods
.method public constructor <init>(Lf75;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lhx0;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ld75;->c:Lf75;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Ld75;->c:Lf75;

    .line 8
    .line 9
    iget-object p0, p0, Lf75;->a:Lk28;

    .line 10
    .line 11
    invoke-static {p0, p2}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
