.class public final Lk10;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lzs;

.field public final m:Llm;


# direct methods
.method public constructor <init>(Lzs;Llm;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lk10;->l:Lzs;

    .line 6
    .line 7
    iput-object p2, p0, Lk10;->m:Llm;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 2

    .line 1
    check-cast p1, Lj10;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ll10;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lfh6;->a:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 18
    .line 19
    iget-object v0, p0, Ll10;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lj10;->u:Lk10;

    .line 25
    .line 26
    new-instance v0, Lh10;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1, p1, p0}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Li10;

    .line 36
    .line 37
    invoke-direct {v0, v1, p1, p0}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Lcom/google/android/material/chip/Chip;->setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d009f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lj10;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lj10;-><init>(Lk10;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
