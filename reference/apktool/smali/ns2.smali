.class public final Lns2;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lms2;


# direct methods
.method public constructor <init>(Lms2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lns2;->a:Lms2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lns2;->a:Lms2;

    .line 5
    .line 6
    invoke-virtual {p0}, Lms2;->run()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
