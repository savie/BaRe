.class public abstract Lkx4;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lcom/google/android/material/listitem/ListItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    instance-of v3, v2, Lcom/google/android/material/listitem/ListItemLayout;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move-object p1, v2

    .line 33
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 34
    .line 35
    :goto_1
    iput-object p1, p0, Lkx4;->u:Lcom/google/android/material/listitem/ListItemLayout;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string p0, "Didn\'t find ListItemLayout in root itemView or among itemView\'s children."

    .line 42
    .line 43
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method


# virtual methods
.method public r(II)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_6

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object p0, p0, Lkx4;->u:Lcom/google/android/material/listitem/ListItemLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-ltz p1, :cond_5

    .line 13
    .line 14
    if-gez p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    if-ne p2, v0, :cond_2

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/material/listitem/ListItemLayout;->J:[I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    if-nez p1, :cond_3

    .line 26
    .line 27
    sget-object p1, Lcom/google/android/material/listitem/ListItemLayout;->G:[I

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    sub-int/2addr p2, v0

    .line 33
    if-ne p1, p2, :cond_4

    .line 34
    .line 35
    sget-object p1, Lcom/google/android/material/listitem/ListItemLayout;->I:[I

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    sget-object p1, Lcom/google/android/material/listitem/ListItemLayout;->H:[I

    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 49
    .line 50
    .line 51
    :cond_6
    :goto_2
    return-void
.end method
