.class public final synthetic Lls0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lbt3;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lls0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 5
    .line 6
    iput-object p2, p0, Lls0;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lls0;->c:Lbt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    sget-object p1, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lq20;

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    iget-object v1, p0, Lls0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 7
    .line 8
    iget-object v2, p0, Lls0;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lls0;->c:Lbt3;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct/range {v0 .. v5}, Lq20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 17
    .line 18
    .line 19
    return-void
.end method
