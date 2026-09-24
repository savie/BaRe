.class public final synthetic Lmq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lpq1;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;


# direct methods
.method public synthetic constructor <init>(ZLpq1;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lmq1;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lmq1;->b:Lpq1;

    .line 7
    .line 8
    iput-object p3, p0, Lmq1;->c:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lmq1;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lmq1;->b:Lpq1;

    .line 6
    .line 7
    iget-object p1, p1, Lpq1;->n:Lzs;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lmq1;->c:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lzs;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
