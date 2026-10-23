.class public final synthetic Lg85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 5
    .line 6
    iput p2, p0, Lg85;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->i0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lg85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    iget p0, p0, Lg85;->b:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setIconSize(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
