.class public final Lfe1;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lil0;

.field public final w:Lxe1;

.field public final x:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;


# direct methods
.method public constructor <init>(Lil0;Lxe1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lxe1;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lkx4;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfe1;->v:Lil0;

    .line 10
    .line 11
    iput-object p2, p0, Lfe1;->w:Lxe1;

    .line 12
    .line 13
    iget-object p1, p2, Lxe1;->c:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 14
    .line 15
    iput-object p1, p0, Lfe1;->x:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 16
    .line 17
    return-void
.end method
