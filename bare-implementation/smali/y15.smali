.class public final Ly15;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le35;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly15;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le25;

    .line 2
    .line 3
    iget-object p0, p0, Ly15;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Le25;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
