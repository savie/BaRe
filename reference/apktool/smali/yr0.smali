.class public final synthetic Lyr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lbs0;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

.field public final synthetic d:Lzr0;


# direct methods
.method public synthetic constructor <init>(Lbs0;Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Lzr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyr0;->a:Lbs0;

    .line 5
    .line 6
    iput-object p2, p0, Lyr0;->b:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lyr0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 9
    .line 10
    iput-object p4, p0, Lyr0;->d:Lzr0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lyr0;->d:Lzr0;

    .line 2
    .line 3
    iget-object p1, p1, Lzr0;->v:Lxd0;

    .line 4
    .line 5
    iget-object p1, p1, Lxd0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v0, Lu45;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    iget-object v2, p0, Lyr0;->b:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 14
    .line 15
    invoke-direct {v0, v2, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0f0022

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ll90;->f(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lwr0;

    .line 25
    .line 26
    iget-object v3, p0, Lyr0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 27
    .line 28
    iget-object p0, p0, Lyr0;->a:Lbs0;

    .line 29
    .line 30
    invoke-direct {v1, v2, v3, p0, p1}, Lwr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Ll90;->e:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v0}, Lu45;->j()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
