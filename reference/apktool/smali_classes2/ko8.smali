.class public final synthetic Lko8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lmo8;

.field public final synthetic b:Lyn8;


# direct methods
.method public synthetic constructor <init>(Lmo8;Lyn8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lko8;->a:Lmo8;

    .line 5
    .line 6
    iput-object p2, p0, Lko8;->b:Lyn8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lko8;->a:Lmo8;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lgm7;->u(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lko8;->b:Lyn8;

    .line 8
    .line 9
    invoke-static {p1, p0}, Lgm7;->x(Lgm7;Ljl0;)V

    .line 10
    .line 11
    .line 12
    return v0
.end method
