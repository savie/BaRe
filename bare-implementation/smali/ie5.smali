.class public final synthetic Lie5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lje5;

.field public final synthetic b:Lvd5;


# direct methods
.method public synthetic constructor <init>(Lje5;Lvd5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lie5;->a:Lje5;

    .line 5
    .line 6
    iput-object p2, p0, Lie5;->b:Lvd5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lie5;->a:Lje5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lje5;->U()Lme5;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lie5;->b:Lvd5;

    .line 8
    .line 9
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0}, Lvd5;->isCloudItem()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1, p2, p0}, Lme5;->j(Ljava/util/List;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
