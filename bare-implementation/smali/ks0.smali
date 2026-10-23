.class public final synthetic Lks0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Lbt3;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljh6;Ljava/util/ArrayList;Ljava/lang/Integer;Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lks0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 5
    .line 6
    iput-object p2, p0, Lks0;->b:Ljh6;

    .line 7
    .line 8
    iput-object p3, p0, Lks0;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lks0;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p5, p0, Lks0;->e:Lbt3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    sget-object p1, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lms0;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    iget-object v1, p0, Lks0;->a:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 7
    .line 8
    iget-object v2, p0, Lks0;->b:Ljh6;

    .line 9
    .line 10
    iget-object v3, p0, Lks0;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v4, p0, Lks0;->d:Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object v5, p0, Lks0;->e:Lbt3;

    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Lms0;-><init>(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljh6;Ljava/util/ArrayList;Ljava/lang/Integer;Lbt3;Ljv1;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-static {p0, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 21
    .line 22
    .line 23
    return-void
.end method
