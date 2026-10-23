.class public final Lag2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lag2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lag2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lag2;->a:Lag2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b(Landroid/animation/AnimatorSet;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
