.class public final Lhf4;
.super Landroid/text/style/ClickableSpan;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

.field public final synthetic b:Landroid/text/style/URLSpan;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhf4;->a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lhf4;->b:Landroid/text/style/URLSpan;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lhf4;->b:Landroid/text/style/URLSpan;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lhf4;->a:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 14
    .line 15
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
