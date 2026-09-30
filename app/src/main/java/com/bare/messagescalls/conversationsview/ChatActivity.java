package com.bare.messagescalls.conversationsview;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;

/**
 * P3 reconstruction of the Reference conversation surface.
 *
 * The Reference receives a qv1 Parcelable conversation item and delegates
 * message loading/rendering to its ViewModel/adapter. BaRe does not fabricate
 * that private provider model, so the conversation surface is reconstructed
 * through the message-rendering dependency boundary.
 */
public final class ChatActivity extends AppCompatActivity {
    private static final String EXTRA_CONVERSATION_TITLE = "extra_conversation_title";
    private static final String STATE_CONVERSATION_TITLE = "chat.conversation.title";

    private String conversationTitle;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.chat_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        conversationTitle = state != null
                ? state.getString(STATE_CONVERSATION_TITLE)
                : null;
        if (conversationTitle == null && getIntent() != null) {
            conversationTitle = getIntent().getStringExtra(EXTRA_CONVERSATION_TITLE);
        }
        if (conversationTitle != null && !conversationTitle.isEmpty()
                && getSupportActionBar() != null) {
            getSupportActionBar().setTitle(conversationTitle);
        }

        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setHasFixedSize(true);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_chat, menu);
        MenuItem debug = menu.findItem(R.id.action_debug_view);
        if (debug != null) {
            // Reference declares this debug action but hides it in normal UI.
            debug.setVisible(false);
        }
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_debug_view) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putString(STATE_CONVERSATION_TITLE, conversationTitle);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
