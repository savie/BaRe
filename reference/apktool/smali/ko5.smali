.class public final synthetic Lko5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lj75;

.field public final synthetic c:Lmt3;

.field public final synthetic d:Lwa;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lj75;Lmt3;Lwa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lko5;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lko5;->b:Lj75;

    .line 7
    .line 8
    iput-object p3, p0, Lko5;->c:Lmt3;

    .line 9
    .line 10
    iput-object p4, p0, Lko5;->d:Lwa;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lko5;->b:Lj75;

    .line 2
    .line 3
    invoke-virtual {p1}, Lj75;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lko5;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lj75;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lko5;->c:Lmt3;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lko5;->d:Lwa;

    .line 25
    .line 26
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
