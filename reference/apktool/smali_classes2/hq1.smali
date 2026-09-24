.class public final synthetic Lhq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhq1;->a:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 5
    .line 6
    iput p2, p0, Lhq1;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 2
    .line 3
    iget-object v0, p0, Lhq1;->a:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lkq1;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget p0, p0, Lhq1;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
