.class public final Lv5;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lw5;


# direct methods
.method public constructor <init>(Lw5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv5;->a:Lw5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lw5;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw5;->b(Landroid/view/View;)Lzq8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lzq8;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lw5;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    new-instance v0, Lm6;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lm6;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-class v3, Ljava/lang/Boolean;

    .line 12
    .line 13
    const/16 v4, 0x1c

    .line 14
    .line 15
    if-lt v1, v4, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lyk8;->c(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v1, 0x7f0a04a7

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v2

    .line 41
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    move v1, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v1, v5

    .line 56
    :goto_1
    invoke-virtual {v0, v1}, Lm6;->n(Z)V

    .line 57
    .line 58
    .line 59
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    if-lt v1, v4, :cond_3

    .line 62
    .line 63
    invoke-static {p1}, Lyk8;->b(Landroid/view/View;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const v1, 0x7f0a04a1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object v1, v2

    .line 87
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move v6, v5

    .line 99
    :goto_3
    invoke-virtual {v0, v6}, Lm6;->l(Z)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Ldl8;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lm6;->m(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    const/16 v3, 0x1e

    .line 112
    .line 113
    if-lt v1, v3, :cond_6

    .line 114
    .line 115
    invoke-static {p1}, Lal8;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    const v4, 0x7f0a04a8

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-class v6, Ljava/lang/CharSequence;

    .line 128
    .line 129
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    move-object v2, v4

    .line 136
    :cond_7
    :goto_4
    check-cast v2, Ljava/lang/CharSequence;

    .line 137
    .line 138
    if-lt v1, v3, :cond_8

    .line 139
    .line 140
    invoke-static {p2, v2}, Lh6;->h(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 149
    .line 150
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :goto_5
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 154
    .line 155
    invoke-virtual {p0, p1, v0}, Lw5;->d(Landroid/view/View;Lm6;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    const p0, 0x7f0a049f

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Ljava/util/List;

    .line 169
    .line 170
    if-nez p0, :cond_9

    .line 171
    .line 172
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 173
    .line 174
    :cond_9
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-ge v5, p1, :cond_a

    .line 179
    .line 180
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lg6;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lm6;->b(Lg6;)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_a
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lw5;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lw5;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lw5;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lw5;->h(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv5;->a:Lw5;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lw5;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
