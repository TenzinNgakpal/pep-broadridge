### 4th July 2025 | 3:00 PM to 5:00 PM

# Lecture 14

### Nodes & Agents


1. **Components of Distributed Builds:**
    * Master Node (Controller): Manages tasks, job scheduling, UI interactions.
    * Agent Node: Executes build jobs sent by the master.
    * Communication: Uses JNLP, SSH or WebSockets for communications.
    * Workspace: Each agent maintains its own workspace for builds.
    * Security: Must configure appropriate access and secrets.


2. **Creating Agents:** 
    * Go to Jenkins *Dashboard* > *Manage Jenkins* > *Manage Nodes & Clouds*.
    * Click "New Node".
    * Enter a name.
    * Choose "Permanent Agent".
    * Configure:
        + Number of executors
        + Remote root directory
        + Labels (Optional)
        + Usage (Only build jobs with label expression)
        + Launch method: *e.g., Launch agent by connecting to the controller*
    * Save and Launch.