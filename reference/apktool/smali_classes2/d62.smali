.class public final Ld62;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public final c:Lcom/google/android/material/textfield/TextInputEditText;

.field public final d:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    .line 1
    iput p4, p0, Ld62;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld62;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iput-object p2, p0, Ld62;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    .line 7
    iput-object p3, p0, Ld62;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Ld62;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ld62;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    return-object p0
.end method
