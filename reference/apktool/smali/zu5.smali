.class public final synthetic Lzu5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvq;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lvq;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzu5;->a:Lvq;

    .line 5
    .line 6
    iput p2, p0, Lzu5;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzu5;->a:Lvq;

    .line 2
    .line 3
    iget-object v1, v0, Lvq;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/util/SparseArray;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget p0, p0, Lzu5;->b:I

    .line 13
    .line 14
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-lez v3, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lvq;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ls79;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/content/Intent;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "otp"

    .line 43
    .line 44
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Ls79;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
