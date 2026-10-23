.class public final Llh1;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lil0;

.field public final w:Lyz0;


# direct methods
.method public constructor <init>(Lil0;Lyz0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lyz0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lkx4;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Llh1;->v:Lil0;

    .line 12
    .line 13
    iput-object p2, p0, Llh1;->w:Lyz0;

    .line 14
    .line 15
    return-void
.end method
