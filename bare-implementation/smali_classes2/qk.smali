.class public final Lqk;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public A:Ljava/lang/Long;

.field public B:Ljava/lang/Long;

.field public final u:Lbt3;

.field public final v:Landroid/widget/TextView;

.field public final w:Lcom/google/android/material/textfield/TextInputLayout;

.field public final x:Lcom/google/android/material/textfield/TextInputLayout;

.field public final y:Lcom/google/android/material/textfield/TextInputEditText;

.field public final z:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>(Lju7;Lbt3;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lju7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lqk;->u:Lbt3;

    .line 9
    .line 10
    iget-object p2, p1, Lju7;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lqk;->v:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object p2, p1, Lju7;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Loe;

    .line 19
    .line 20
    iget-object p2, p2, Loe;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 23
    .line 24
    iput-object p2, p0, Lqk;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    iget-object p1, p1, Lju7;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Loe;

    .line 29
    .line 30
    iget-object p1, p1, Loe;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    .line 34
    iput-object p1, p0, Lqk;->x:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 44
    .line 45
    iput-object p2, p0, Lqk;->y:Lcom/google/android/material/textfield/TextInputEditText;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 55
    .line 56
    iput-object p1, p0, Lqk;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 57
    .line 58
    return-void
.end method
